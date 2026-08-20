import pandas as pd
import matplotlib.pyplot as plt

# Read simulation data
data = pd.read_csv("simulation/water_level.csv")

# Plot water level
plt.figure(figsize=(10, 5))

plt.plot(
    data["time"],
    data["water_level"],
    marker="o",
    linewidth=2,
    color="blue",
    label="Water Level (%)"
)

# Reference levels
plt.axhline(25, color="green", linestyle="--", alpha=0.6)
plt.axhline(50, color="orange", linestyle="--", alpha=0.6)
plt.axhline(75, color="purple", linestyle="--", alpha=0.6)
plt.axhline(100, color="red", linestyle="--", alpha=0.6)

plt.xlabel("Simulation Time")
plt.ylabel("Water Level (%)")
plt.title("Water Level Indicator - Simulation Output")

plt.ylim(-5, 110)
plt.grid(True, alpha=0.3)
plt.legend()

plt.tight_layout()

# Save graph
plt.savefig("simulation/output.png", dpi=300)

plt.show()

print("\nSimulation Results:")
print(data.to_string(index=False))
print("\nGraph saved as simulation/output.png")
