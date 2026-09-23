.class public final Lcom/google/android/gms/cast/framework/zzbg;
.super Lcom/google/android/gms/cast/framework/zzax;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/cast/framework/SessionManagerListener;

.field public final f:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.cast.framework.ISessionManagerListener"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzb;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzbg;->c:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    .line 7
    .line 8
    const-class p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzbg;->f:Ljava/lang/Class;

    .line 11
    .line 12
    return-void
.end method
