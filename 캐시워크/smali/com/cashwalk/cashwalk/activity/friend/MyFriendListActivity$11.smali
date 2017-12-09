.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;
.super Ljava/lang/Object;
.source "MyFriendListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getPhoneContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 835
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2702(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/List;)Ljava/util/List;

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 838
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data1"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "data_version"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 839
    .local v25, "phoneCursor":Landroid/database/Cursor;
    if-eqz v25, :cond_0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 841
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    .line 999
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v25    # "phoneCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 844
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v25    # "phoneCursor":Landroid/database/Cursor;
    :cond_2
    const-string v3, "contact_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 845
    .local v8, "PHONES_CONTACT_ID_INDEX":I
    const-string v3, "data1"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 846
    .local v11, "PHONES_NUMBER_INDEX":I
    const-string v3, "display_name"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 847
    .local v10, "PHONES_DISPLAY_NAME_INDEX":I
    const-string v3, "data_version"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 848
    .local v9, "PHONES_DATA_VERSION_INDEX":I
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 849
    :cond_3
    :goto_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 850
    new-instance v24, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    invoke-direct/range {v24 .. v24}, Lcom/cashwalk/cashwalk/util/network/model/Phone;-><init>()V

    .line 851
    .local v24, "mPhoneInfo":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 852
    .local v26, "phoneNumber":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 854
    move-object/from16 v0, v25

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 855
    .local v12, "contactId":I
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 856
    .local v15, "dataVersion":I
    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 858
    .local v13, "contactName":Ljava/lang/String;
    move-object/from16 v0, v24

    iput v12, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->contacts_id:I

    .line 859
    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->name:Ljava/lang/String;

    .line 860
    const-string v3, "+82"

    const-string v4, "0"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "82010"

    const-string v5, "010"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "8210"

    const-string v5, "010"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+82010"

    const-string v5, "010"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 861
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    .line 862
    move-object/from16 v0, v24

    iput v15, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->version:I

    .line 864
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_3

    const-string v3, "010"

    .line 865
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "+8210"

    .line 866
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "8210"

    .line 867
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "82010"

    .line 868
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "011"

    .line 869
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "016"

    .line 870
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "017"

    .line 871
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "018"

    .line 872
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "019"

    .line 873
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 878
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 993
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "PHONES_CONTACT_ID_INDEX":I
    .end local v9    # "PHONES_DATA_VERSION_INDEX":I
    .end local v10    # "PHONES_DISPLAY_NAME_INDEX":I
    .end local v11    # "PHONES_NUMBER_INDEX":I
    .end local v12    # "contactId":I
    .end local v13    # "contactName":Ljava/lang/String;
    .end local v15    # "dataVersion":I
    .end local v24    # "mPhoneInfo":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    .end local v25    # "phoneCursor":Landroid/database/Cursor;
    .end local v26    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 994
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 882
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "PHONES_CONTACT_ID_INDEX":I
    .restart local v9    # "PHONES_DATA_VERSION_INDEX":I
    .restart local v10    # "PHONES_DISPLAY_NAME_INDEX":I
    .restart local v11    # "PHONES_NUMBER_INDEX":I
    .restart local v25    # "phoneCursor":Landroid/database/Cursor;
    :cond_5
    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->getResult()Ljava/util/List;

    move-result-object v17

    .line 885
    .local v17, "getLocalDB":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v33, "updatePhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v31, "tempPhones":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 889
    .local v32, "updateNumber":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_f

    .line 891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 894
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_a

    .line 895
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_9

    .line 896
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->contacts_id:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->contacts_id:I

    if-ne v4, v3, :cond_7

    .line 898
    const/16 v22, 0x0

    .local v22, "k":I
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_6

    .line 899
    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->contacts_id:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->contacts_id:I

    if-ne v4, v3, :cond_8

    .line 900
    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 906
    :cond_6
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->version:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->version:I

    if-ge v4, v3, :cond_7

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    .end local v22    # "k":I
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 898
    .restart local v22    # "k":I
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 894
    .end local v22    # "k":I
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 914
    .end local v21    # "j":I
    :cond_a
    const/16 v19, 0x0

    :goto_5
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_b

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    move-result-object v4

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget v5, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->contacts_id:I

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget-object v6, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->name:Ljava/lang/String;

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget-object v7, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->version:I

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->insert(ILjava/lang/String;Ljava/lang/String;I)V

    .line 914
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 918
    :cond_b
    const/16 v19, 0x0

    :goto_6
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_c

    .line 919
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    move-result-object v4

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget v5, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->contacts_id:I

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget-object v6, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->name:Ljava/lang/String;

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget-object v7, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->version:I

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->update(ILjava/lang/String;Ljava/lang/String;I)V

    .line 918
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 922
    :cond_c
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 923
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 933
    .end local v19    # "i":I
    :cond_d
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .local v27, "phones":Ljava/lang/StringBuilder;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v28, "removeDuplicate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_7
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_10

    .line 938
    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 939
    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 926
    .end local v19    # "i":I
    .end local v27    # "phones":Ljava/lang/StringBuilder;
    .end local v28    # "removeDuplicate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    .line 927
    .local v20, "item":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->contacts_id:I

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->version:I

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->insert(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_8

    .line 942
    .end local v20    # "item":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    .restart local v19    # "i":I
    .restart local v27    # "phones":Ljava/lang/StringBuilder;
    .restart local v28    # "removeDuplicate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    :cond_10
    new-instance v23, Ljava/util/HashSet;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 943
    .local v23, "listSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    new-instance v30, Ljava/util/ArrayList;

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 944
    .local v30, "resultUpdatePhoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    new-instance v33, Ljava/util/ArrayList;

    .end local v33    # "updatePhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .restart local v33    # "updatePhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 949
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2002(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 950
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v29, "resultTempPhoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x1

    .line 952
    .local v14, "countCheck":I
    const/16 v19, 0x0

    :goto_9
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_14

    .line 953
    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget-object v0, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 954
    .restart local v26    # "phoneNumber":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Phone;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 955
    .local v34, "value":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    const-string v3, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2800(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I

    move-result v4

    if-le v3, v4, :cond_13

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2800(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I

    move-result v3

    rem-int v3, v14, v3

    if-nez v3, :cond_12

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2908(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2000(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    new-instance v29, Ljava/util/ArrayList;

    .end local v29    # "resultTempPhoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .restart local v29    # "resultTempPhoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v27, Ljava/lang/StringBuilder;

    .end local v27    # "phones":Ljava/lang/StringBuilder;
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    .restart local v27    # "phones":Ljava/lang/StringBuilder;
    :cond_11
    :goto_a
    add-int/lit8 v14, v14, 0x1

    .line 952
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_9

    .line 966
    :cond_12
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 970
    :cond_13
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v3

    if-ne v14, v3, :cond_11

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2002(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2000(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 978
    .end local v26    # "phoneNumber":Ljava/lang/String;
    .end local v34    # "value":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2000(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->getPhoneNumber(Landroid/content/Context;)Lcom/cashwalk/cashwalk/util/network/model/Phone;

    move-result-object v18

    .line 981
    .local v18, "getPhoneNumber":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    const-string v4, "82"

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2102(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 982
    if-eqz v18, :cond_15

    .line 983
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->countryCode:Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->countryCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2102(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    new-instance v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11$1;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;)V

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
