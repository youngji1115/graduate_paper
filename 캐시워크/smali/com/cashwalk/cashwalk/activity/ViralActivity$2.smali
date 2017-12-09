.class Lcom/cashwalk/cashwalk/activity/ViralActivity$2;
.super Ljava/lang/Object;
.source "ViralActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/util/URLShortener$LoadingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ViralActivity;->shortenUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ViralActivity;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ViralActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ViralActivity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ViralActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity$2;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishedLoading(Ljava/lang/String;)V
    .locals 3
    .param p1, "shortUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ViralActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity$2;->val$type:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->access$200(Lcom/cashwalk/cashwalk/activity/ViralActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ViralActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity$2;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ViralActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ViralActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->access$200(Lcom/cashwalk/cashwalk/activity/ViralActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startedLoading()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method
