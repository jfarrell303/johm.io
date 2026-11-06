---
template: my_template.html
icon: lucide/home
title: Home
hide:
    - navigation
    - toc
    - footer
    - path

description:

robots: noindex, nofollow

---

<!-- [Meshi Mania](../meshi_mania/index.html) -->

# Games, bits, pixels, oh my!
## Recent Projects

<!-- > Play [`Meshi Mania`](../meshi_mania/index.html) - A game made in about 96hs during the 2026 [GMTK game jam](https://itch.io/jam/gmtk-jam-2026). -->

> Play [`Meshi Mania`](meshi.md) - A game made in about 96hs during the 2026 [GMTK game jam](https://itch.io/jam/gmtk-jam-2026).

----
``` cpp linenums="1" title="thing_props.h"
enum ThingProp {
   ThingProp_Nil          = (1<<0),
   ThingProp_Visible      = (1<<1),
   ThingProp_Sleeping     = (1<<2),
   ThingProp_Damages      = (1<<3),
   ThingProp_Damagable    = (1<<4),
   ThingProp_Movement     = (1<<5),
   ThingProp_FollowParent = (1<<6),
   ThingProp_Explosive    = (1<<7),
   ThingProp_Projectile   = (1<<8),
   ThingProp_Collectible  = (1<<9),
   ThingProp_SeeksPlayer  = (1<<10),
   ThingProp_TimedLife    = (1<<11),
   ThingProp_MeleeAttack  = (1<<12),
   ThingProp_RangedAttack = (1<<13),
   ThingProp_Animated     = (1<<14),
   ThingProp_Breakable    = (1<<15),
   ThingProp_HasTooltip   = (1<<16),
   ThingProp_Enemy        = (ThingProp_SeeksPlayer  | ThingProp_Damagable | ThingProp_Movement),
   ThingProp_MeleeEnemy   = (ThingProp_MeleeAttack  | ThingProp_Enemy),
   ThingProp_RangedEnemy  = (ThingProp_RangedAttack | ThingProp_Enemy),
};

```

``` cpp linenums="1" title="gpu_buffer_example.cpp"
// Testing123
static GPU_BufferHandle
gpu_buffer_alloc()
{
   GPU_BufferHandle handle = gpu->buffers.add();

   if (handle.is_invalid()) {
      return handle;
   }

   return handle;
}

static GPU_Buffer *
gpu_buffer_from_handle(GPU_BufferHandle handle)
{
   return gpu->buffers.get(handle);
}
```

----

<div style="border: 1px solid var(--jsf-accent); border-radius: 8px; padding: 1rem; background: var(--md-code-bg-color);">
  <canvas id="webgpuCanvas" width="600" height="400" style="width: 100%; height: auto; display: block; border-radius: 4px;"></canvas>
  <p id="webgpuStatus" style="font-size: 0.85rem; margin-top: 0.5rem; color: var(--md-default-fg-color--lighter);">Initializing WebGPU...</p>
</div>

<!-- !!! note "" -->
<!--     Hey there -->
<!-- The reason the copyright footer strip is still showing a darker background (like #19171a from --md-footer-bg-color) is because Material for MkDocs splits the footer into two containers: .md-footer (the main navigation row with next/previous page buttons) and .md-footer-meta (the bottom copyright strip). -->
<!---->
<!-- To force the copyright bar at the very bottom to use your semi-transparent --jsf-lgray or solid --jsf-gray background, add this precise selector to the bottom of your stylesheet: -->

<!-- ## Task Lists -->
<!---->
<!-- > Go to [documentation](https://zensical.org/docs/authoring/lists/#using-task-lists) -->
<!---->
<!-- - [x] Install Zensical -->
<!-- - [x] Configure `zensical.toml` -->
<!-- - [x] Write amazing documentation -->
<!-- - [ ] Deploy anywhere -->
<!---->
<!-- ## Tooltips -->
<!---->
<!-- > Go to [documentation](https://zensical.org/docs/authoripalette.primary = "indigo"otooltips/) -->
<!---->
<!-- [Hover me][example] -->
<!---->
<!-- [example]: https://example.com "I'm a tooltip!" -->
