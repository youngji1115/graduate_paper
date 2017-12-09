.class Lcom/cashwalk/cashwalk/MainActivity$20;
.super Lcom/tnkfactory/ad/ServiceCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$20;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 836
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 838
    .local v0, "point":I
    if-lez v0, :cond_0

    .line 839
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$20;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1, v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$1800(Lcom/cashwalk/cashwalk/MainActivity;I)V

    .line 841
    :cond_0
    return-void
.end method
