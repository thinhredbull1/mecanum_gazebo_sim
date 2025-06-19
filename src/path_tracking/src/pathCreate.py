import pygame
import numpy as np
from scipy.interpolate import splprep, splev
import asyncio
import platform

# Initialize Pygame
pygame.init()
WIDTH, HEIGHT = 800, 600
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Spline Editor")
clock = pygame.time.Clock()
FPS = 60

# Colors
WHITE = (255, 255, 255)
RED = (255, 0, 0)
BLUE = (0, 0, 255)
BLACK = (0, 0, 0)
GRAY = (200, 200, 200)

# Initial control points
x_control = [2, 3, 2, 1, 0, -2, -2, -3, -2, -1, 0, 1, 2]
y_control = [0, 1, 2, 3, 3, 3, 2, 1, 0, -1, -2, -3, -4]

# Convert to pixel coordinates
def to_pixel(x, y):
    scale = 40
    offset_x, offset_y = WIDTH // 2, HEIGHT // 2
    return int(offset_x + x * scale), int(offset_y - y * scale)

# Convert from pixel to world coordinates
def to_world(px, py):
    scale = 40
    offset_x, offset_y = WIDTH // 2, HEIGHT // 2
    return (px - offset_x) / scale, (offset_y - py) / scale

# State variables
dragging = False
drag_index = -1
control_points = list(zip(x_control, y_control))

def update_spline():
    if len(control_points) < 2:
        return []
    x, y = zip(*control_points)
    tck, u = splprep([x, y], s=0)
    u_fine = np.linspace(0, 1, 500)
    x_spline, y_spline = splev(u_fine, tck)
    return list(zip(x_spline, y_spline))

def print_points():
    x, y = zip(*control_points)
    print("\n🔹 Control points (copy for reuse in Python):")
    print(f"x_control = [{', '.join(f'{xi:.2f}' for xi in x)}]")
    print(f"y_control = [{', '.join(f'{yi:.2f}' for yi in y)}]")

async def main():
    global dragging, drag_index, control_points
    running = True
    font = pygame.font.Font(None, 24)  # Font for coordinate labels

    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False
            elif event.type == pygame.MOUSEBUTTONDOWN:
                if event.button == 1:  # Left click
                    mouse_x, mouse_y = event.pos
                    world_x, world_y = to_world(mouse_x, mouse_y)
                    # Find closest point
                    distances = [np.hypot(world_x - x, world_y - y) for x, y in control_points]
                    min_dist = min(distances)
                    if min_dist < 0.5:
                        drag_index = distances.index(min_dist)
                        dragging = True
            elif event.type == pygame.MOUSEBUTTONUP:
                if event.button == 1 and dragging:
                    dragging = False
                    print_points()
            elif event.type == pygame.MOUSEMOTION and dragging:
                mouse_x, mouse_y = event.pos
                world_x, world_y = to_world(mouse_x, mouse_y)
                control_points[drag_index] = (world_x, world_y)

        # Clear screen
        screen.fill(WHITE)

        # Draw grid
        # Draw main axes (x=0 and y=0) with thicker lines
        px, py = to_pixel(-10, 0)
        px2, py2 = to_pixel(10, 0)
        pygame.draw.line(screen, BLACK, (px, py), (px2, py2), 2)  # x-axis
        px, py = to_pixel(0, -10)
        px2, py2 = to_pixel(0, 10)
        pygame.draw.line(screen, BLACK, (px, py), (px2, py2), 2)  # y-axis

        # Draw grid lines
        for x in range(-10, 11):
            if x != 0:  # Skip main x-axis
                px, py = to_pixel(x, -10)
                px2, py2 = to_pixel(x, 10)
                pygame.draw.line(screen, GRAY, (px, py), (px2, py2), 1)
            # Draw x-coordinate labels
            px, py = to_pixel(x, 0)
            label = font.render(str(x), True, BLACK)
            screen.blit(label, (px - 10, py + 5))

        for y in range(-10, 11):
            if y != 0:  # Skip main y-axis
                px, py = to_pixel(-10, y)
                px2, py2 = to_pixel(10, y)
                pygame.draw.line(screen, GRAY, (px, py), (px2, py2), 1)
            # Draw y-coordinate labels
            px, py = to_pixel(0, y)
            label = font.render(str(y), True, BLACK)
            screen.blit(label, (px + 5, py - 10))

        # Draw spline
        spline_points = update_spline()
        if spline_points:
            pixel_spline = [to_pixel(x, y) for x, y in spline_points]
            pygame.draw.lines(screen, RED, False, pixel_spline, 2)

        # Draw control points
        for x, y in control_points:
            px, py = to_pixel(x, y)
            pygame.draw.circle(screen, BLUE, (px, py), 8)

        # Draw title
        title_font = pygame.font.Font(None, 36)
        text = title_font.render("Drag points to edit the spline", True, BLACK)
        screen.blit(text, (10, 10))

        pygame.display.flip()
        await asyncio.sleep(1.0 / FPS)

    pygame.quit()

if platform.system() == "Emscripten":
    asyncio.ensure_future(main())
else:
    if __name__ == "__main__":
        asyncio.run(main())