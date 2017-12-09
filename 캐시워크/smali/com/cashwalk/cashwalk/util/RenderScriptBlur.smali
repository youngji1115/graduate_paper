.class public Lcom/cashwalk/cashwalk/util/RenderScriptBlur;
.super Ljava/lang/Object;
.source "RenderScriptBlur.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v8/renderscript/RSRuntimeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    .line 13
    const/4 v3, 0x0

    .line 15
    .local v3, "renderScript":Landroid/support/v8/renderscript/RenderScript;
    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v3

    .line 16
    sget-object v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x1

    invoke-static {v3, p1, v5, v6}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    .line 18
    .local v1, "input":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    .line 19
    .local v2, "output":Landroid/support/v8/renderscript/Allocation;
    invoke-static {v3}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 21
    .local v0, "blur":Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    .line 22
    if-le p2, v4, :cond_0

    move p2, v4

    .end local p2    # "radius":I
    :cond_0
    int-to-float v4, p2

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 23
    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    .line 24
    invoke-virtual {v2, p1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {v3}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    .line 31
    :cond_1
    return-object p1

    .line 27
    .end local v0    # "blur":Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    .end local v1    # "input":Landroid/support/v8/renderscript/Allocation;
    .end local v2    # "output":Landroid/support/v8/renderscript/Allocation;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {v3}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    :cond_2
    throw v4
.end method
