# How Mimetic Market Intelligence Works

Visual diagrams showing the skill architecture and data flow.

---

## Overview: Two-Phase Process

```mermaid
flowchart TD
A[Client provides market<br>and competitor list] --> B[Phase 1: Research]
B --> C[Doc 1: Convergence Map]
B --> D[Doc 2: Desire Theft Analysis]
B --> E[Doc 3: Client Desire Profile]
C --> F[HALT - Present<br>conversation questions]
D --> F
E --> F
F --> G[Client answers questions]
G --> H[Phase 2: Strategy]
H --> I[Doc 4: Visibility Strategy]
H --> J[Doc 5: Desire Unification]
H --> K[Doc 6: Internal Mediators]
```

---

## Phase 1: Research Engine

```mermaid
flowchart TD
A[10-20 Competitors] --> B[Batch 1: Research 5]
B --> C[WebSearch per competitor<br>3+ queries each]
C --> D[WebFetch per competitor<br>homepage + about + sales page]
D --> E[Extract desire profiles<br>primary + secondary desires]
E --> F[Save batch to file]
F --> G{More batches?}
G -->|Yes| H[Batch 2-4: Next 5]
H --> C
G -->|No| I[Build convergence map<br>across all competitors]
I --> J[Map contested zones<br>5+ competitors same desire]
I --> K[Map underserved zones<br>evidence-backed gaps]
I --> L[Research client with<br>equal depth to competitors]
```

---

## Phase 1 Output: The Three Documents

```mermaid
flowchart TD
A[Doc 1: Anti-Mimetic<br>Differentiator] --> A1[6 convergence dimensions]
A --> A2[Where client converged]
A --> A3[Genuine differentiators]
A --> A4[Open positioning space]
B[Doc 2: Competitor<br>Desire Theft] --> B1[Per-competitor profiles<br>5-10 evidence quotes each]
B --> B2[Contested desire zones]
B --> B3[Underserved desire zones]
C[Doc 3: Client<br>Desire Profile] --> C1[7 mandatory sections]
C --> C2[10+ evidence quotes]
C --> C3[Side-by-side comparison table]
C --> C4[Direction of mimesis<br>who originated what]
```

---

## Phase 2: Strategy Documents

```mermaid
flowchart TD
A[Client conversation answers] --> B[Doc 4: Visibility<br>and Model Strategy]
A --> C[Doc 5: Desire<br>Unification Strategy]
A --> D[Doc 6: Internal Mediator<br>Deployment Strategy]
B --> B1[Fast visibility move]
B --> B2[Manifesto equivalent]
B --> B3[Channel strategy]
C --> C1[Product-desire map]
C --> C2[Pricing analysis]
C --> C3[Founder energy mapping]
D --> D1[5-dimension scoring]
D --> D2[Proof repositioning]
D --> D3[Deployment map]
```

---

## Quality Gates

```mermaid
flowchart TD
A[Before saving<br>any document] --> B{Every claim backed<br>by specific quote?}
B -->|No| C[Add evidence or<br>mark LOW-CONFIDENCE]
B -->|Yes| D{Client profile depth<br>>= competitor depth?}
D -->|No| E[Deepen client<br>research]
D -->|Yes| F{Direction of mimesis<br>investigated?}
F -->|No| G[Research timeline<br>who originated what]
F -->|Yes| H{Forensic tone<br>no consultant-speak?}
H -->|No| I[Rewrite to remove<br>vague language]
H -->|Yes| J[Save to file]
```

---

## Girardian Framework

```mermaid
flowchart TD
A[Mimetic Desire Theory] --> B[People want what they<br>see others wanting]
B --> C[Each competitor is<br>a MODEL mediating desires]
C --> D[Map what DESIRES<br>not what FEATURES]
D --> E[Convergence: competitors<br>unconsciously imitate each other]
D --> F[Contested zones: same desire<br>mediated by 5+ competitors]
D --> G[Underserved zones: real desires<br>nobody explicitly mediates]
E --> H[Find where client<br>sounds like everyone else]
F --> I[Avoid saturated<br>desire territory]
G --> J[Claim unoccupied<br>desire space]
```
