.class Lcom/google/android/gms/internal/zziq$6$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zziq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziq$6;->zza(Lcom/google/android/gms/internal/zznq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIq:Lcom/google/android/gms/internal/zznq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziq$6;Lcom/google/android/gms/internal/zznq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zziq$6$5;->zzIq:Lcom/google/android/gms/internal/zznq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzir;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzIx:Lcom/google/android/gms/internal/zznt;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzIx:Lcom/google/android/gms/internal/zznt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziq$6$5;->zzIq:Lcom/google/android/gms/internal/zznq;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zznt;->zza(Lcom/google/android/gms/internal/zznq;)V

    :cond_0
    return-void
.end method
