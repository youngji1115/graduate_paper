.class Landroid/support/v8/renderscript/ScriptGroup$Builder$1;
.super Ljava/lang/Object;
.source "ScriptGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v8/renderscript/ScriptGroup$Builder;->calcOrder()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v8/renderscript/ScriptGroup$Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v8/renderscript/ScriptGroup$Builder;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/ScriptGroup$Builder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v8/renderscript/ScriptGroup$Builder;

    .prologue
    .line 865
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder$1;->this$0:Landroid/support/v8/renderscript/ScriptGroup$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)I
    .locals 2
    .param p1, "n1"    # Landroid/support/v8/renderscript/ScriptGroup$Node;
    .param p2, "n2"    # Landroid/support/v8/renderscript/ScriptGroup$Node;

    .prologue
    .line 867
    iget v0, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOrder:I

    iget v1, p2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOrder:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 865
    check-cast p1, Landroid/support/v8/renderscript/ScriptGroup$Node;

    check-cast p2, Landroid/support/v8/renderscript/ScriptGroup$Node;

    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder$1;->compare(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)I

    move-result v0

    return v0
.end method
