.class Lcom/cashwalk/cashwalk/activity/TnkAdActivity$3;
.super Lcom/tnkfactory/ad/ServiceCallback;
.source "TnkAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->checkTnkPoint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 277
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "result":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 279
    .local v0, "point":I
    if-lez v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-static {v1, v0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->access$200(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;I)V

    .line 282
    :cond_0
    return-void
.end method
