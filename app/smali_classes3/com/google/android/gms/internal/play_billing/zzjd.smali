.class final Lcom/google/android/gms/internal/play_billing/zzjd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzfy;


# static fields
.field public static final a:Lcom/google/android/gms/internal/play_billing/zzfy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjd;->a:Lcom/google/android/gms/internal/play_billing/zzfy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzje;->a(I)Lcom/google/android/gms/internal/play_billing/zzje;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
