# Design System

<!-- This module defines design principles, visual standards, and UI conventions. -->
<!-- Read by AI agents before implementing any UI work (Phase 3). -->
<!-- Can be overridden per-project via .overrides/design-system.md -->

## Design Principles

- Clarity over decoration — every visual element should serve a purpose
- Consistency across all screens and components
- Responsive by default — mobile-first approach
- Accessible — meet WCAG 2.1 AA standards minimum

## Styling Approach

- Use Tailwind CSS as the default utility framework (override per-project if different)
- Use design tokens for colors, spacing, typography — don't hardcode values
- Component-level styles should be self-contained
- Avoid global CSS except for resets and base typography

## Typography

- Define a type scale and stick to it
- Use semantic heading levels (h1-h6) correctly for accessibility
- Body text should be readable: minimum 16px, adequate line height (1.5+)

## Spacing and Layout

- Use a consistent spacing scale (e.g., 4px base unit)
- Use CSS Grid or Flexbox for layout — avoid positioning hacks
- Maintain consistent padding and margins across similar components

## Color

- Define a color palette with semantic names (primary, secondary, success, error, etc.)
- Ensure sufficient contrast ratios for text on backgrounds
- Support dark mode if the project requires it

## Components

- Follow existing component patterns in the codebase
- New components should be consistent with established patterns
- Interactive elements must have visible focus states
- Loading states and empty states should be designed, not afterthoughts

## Responsive Behavior

- Define breakpoints and document them
- Test at mobile, tablet, and desktop widths minimum
- Navigation patterns should adapt appropriately to screen size

## Accessibility

- All interactive elements must be keyboard accessible
- Images need alt text
- Form inputs need labels
- Use ARIA attributes where semantic HTML is insufficient
- Color must not be the only means of conveying information

---

*This is a starting template. Replace with project-specific design system details.*
