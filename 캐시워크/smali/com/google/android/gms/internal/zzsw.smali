.class public Lcom/google/android/gms/internal/zzsw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zzafq:Lcom/google/android/gms/analytics/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsk;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsw;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    return-void
.end method

.method public static getLogger()Lcom/google/android/gms/analytics/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafq:Lcom/google/android/gms/analytics/Logger;

    return-object v0
.end method

.method public static setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .locals 0

    sput-object p0, Lcom/google/android/gms/internal/zzsw;->zzafq:Lcom/google/android/gms/analytics/Logger;

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzsx;->zzpw()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzsx;->zzbO(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafq:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->verbose(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsw;->zzai(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzsq;->zzaek:Lcom/google/android/gms/internal/zzsq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsq$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static zzai(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzsw;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzsw;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/analytics/Logger;->getLogLevel()I

    move-result v1

    if-gt v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static zzbe(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzsx;->zzpw()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzsx;->zzbR(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafq:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsw;->zzai(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzsq;->zzaek:Lcom/google/android/gms/internal/zzsq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsq$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static zzf(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/zzsx;->zzpw()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/zzsx;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafq:Lcom/google/android/gms/analytics/Logger;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->error(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsw;->zzai(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/zzsq;->zzaek:Lcom/google/android/gms/internal/zzsq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsq$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v1, p0

    goto :goto_1
.end method
