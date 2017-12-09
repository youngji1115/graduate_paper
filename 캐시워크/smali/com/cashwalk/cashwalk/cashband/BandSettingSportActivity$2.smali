.class Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;
.super Ljava/lang/Object;
.source "BandSettingSportActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v9, 0x0

    .line 125
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    move-result-object v6

    if-nez v6, :cond_0

    .line 126
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    .line 127
    invoke-virtual {v7}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090112

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 126
    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 127
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 156
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 129
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v5, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 133
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 134
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 135
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/model/SportMode;

    iget-boolean v6, v6, Lcom/cashwalk/cashwalk/model/SportMode;->isSelect:Z

    if-eqz v6, :cond_1

    .line 137
    :try_start_0
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 138
    add-int/lit8 v4, v4, 0x1

    .line 139
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/model/SportMode;

    iget v6, v6, Lcom/cashwalk/cashwalk/model/SportMode;->modeCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 146
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 147
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "CASHBAND_SETTING_SPORT_MODE_ITEM"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setSportMode(Ljava/util/ArrayList;)V

    .line 152
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    const-string/jumbo v7, "\uc800\uc7a5\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 153
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->finish()V

    goto :goto_0
.end method
