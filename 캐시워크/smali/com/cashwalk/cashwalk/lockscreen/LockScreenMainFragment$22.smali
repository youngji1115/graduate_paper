.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;
.super Landroid/os/Handler;
.source "LockScreenMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->uploadCoachProfile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

.field final synthetic val$px:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    iput p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->val$px:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1054
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1055
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1056
    const-string v4, "filename"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1057
    .local v1, "fn":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2302(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1059
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LOCKSCREEN_COACH_PROFILE_PATH"

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1061
    new-instance v3, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 1062
    .local v3, "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->coachImageUrl:Ljava/lang/String;

    .line 1063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### resultCoachUrl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1064
    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;)V

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v2

    .line 1076
    .local v2, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$22;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1079
    .end local v1    # "fn":Ljava/lang/String;
    .end local v2    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v3    # "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_0
    return-void
.end method
