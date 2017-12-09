.class Lcom/cashwalk/cashwalk/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 204
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$2;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 207
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "pushId":Ljava/lang/String;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$2;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "PUSH_ID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "localId":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$2;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v2, v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$200(Lcom/cashwalk/cashwalk/MainActivity;Ljava/lang/String;)V

    .line 213
    :cond_1
    return-void
.end method
