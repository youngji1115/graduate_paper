.class Lcom/google/android/gms/internal/zzaro$1;
.super Lcom/google/android/gms/internal/zzaro$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaro;->addGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUp:Landroid/app/PendingIntent;

.field final synthetic zzbke:Lcom/google/android/gms/location/GeofencingRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaro;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaro$1;->zzbke:Lcom/google/android/gms/location/GeofencingRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaro$1;->zzaUp:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaro$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaru;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaro$1;->zza(Lcom/google/android/gms/internal/zzaru;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaru;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro$1;->zzbke:Lcom/google/android/gms/location/GeofencingRequest;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaro$1;->zzaUp:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzzv$zzb;)V

    return-void
.end method
