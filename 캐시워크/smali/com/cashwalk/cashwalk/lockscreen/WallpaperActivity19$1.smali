.class Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$1;
.super Ljava/lang/Object;
.source "WallpaperActivity19.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-lez p3, :cond_0

    .line 87
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    const/4 v2, 0x0

    invoke-static {v1, p3, v2}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->access$000(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;ILjava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 94
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    const v3, 0x7f0901b0

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->access$100(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)V

    goto :goto_0
.end method
