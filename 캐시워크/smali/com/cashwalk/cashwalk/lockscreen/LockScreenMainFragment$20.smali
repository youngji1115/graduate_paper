.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LockScreenMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 812
    :try_start_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 814
    .local v2, "pinfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v4, "version"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 815
    .local v3, "version":I
    const/4 v1, 0x0

    .line 816
    .local v1, "must":I
    const-string v4, "must"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 817
    const-string v4, "must"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 820
    :cond_0
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v4, v3, :cond_2

    .line 821
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v4, v1, :cond_1

    .line 823
    const/4 v4, 0x1

    sput-boolean v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldMustUpdate:Z

    .line 824
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V

    .line 830
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldUpdate:Z

    .line 832
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageButton;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 833
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/FrameLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 834
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 835
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 836
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 838
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    const v6, 0x7f0902e7

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    .end local v1    # "must":I
    .end local v2    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "version":I
    :goto_1
    return-void

    .line 826
    .restart local v1    # "must":I
    .restart local v2    # "pinfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "version":I
    :cond_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldMustUpdate:Z

    .line 827
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PREFERENCE_UPDATE_CHECK_DATETIME"

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    .end local v1    # "must":I
    .end local v2    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "version":I
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 860
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "must":I
    .restart local v2    # "pinfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "version":I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PREFERENCE_UPDATE_CHECK_DATETIME"

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
