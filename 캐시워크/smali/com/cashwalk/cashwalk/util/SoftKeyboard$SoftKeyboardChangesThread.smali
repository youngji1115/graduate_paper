.class Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;
.super Ljava/lang/Thread;
.source "SoftKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/util/SoftKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftKeyboardChangesThread"
.end annotation


# instance fields
.field private mCallback:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;

.field private started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)V
    .locals 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    return-void
.end method


# virtual methods
.method public keyboardOpened()V
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    .line 241
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 242
    monitor-exit p0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 177
    monitor-enter p0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$100(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)I

    move-result v0

    .line 191
    .local v0, "currentBottomLocation":I
    :goto_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$200(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$100(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)I

    move-result v0

    goto :goto_2

    .line 182
    .end local v0    # "currentBottomLocation":I
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 196
    .restart local v0    # "currentBottomLocation":I
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->mCallback:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;

    invoke-interface {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;->onSoftKeyboardShow()V

    .line 202
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$200(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)I

    move-result v2

    if-lt v0, v2, :cond_3

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$100(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)I

    move-result v0

    goto :goto_3

    .line 208
    :cond_3
    :goto_4
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$200(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)I

    move-result v2

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    monitor-enter p0

    .line 214
    const-wide/16 v2, 0x1f4

    :try_start_3
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 221
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$100(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)I

    move-result v0

    goto :goto_4

    .line 215
    :catch_1
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 220
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 224
    :cond_4
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->mCallback:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;

    invoke-interface {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;->onSoftKeyboardHide()V

    .line 228
    :cond_5
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$300(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 229
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v2, v4}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$302(Lcom/cashwalk/cashwalk/util/SoftKeyboard;Z)Z

    .line 232
    :cond_6
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->this$0:Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->access$400(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 235
    .end local v0    # "currentBottomLocation":I
    :cond_7
    return-void
.end method

.method public setCallback(Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;)V
    .locals 0
    .param p1, "mCallback"    # Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->mCallback:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;

    .line 169
    return-void
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 247
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 251
    monitor-exit p0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
