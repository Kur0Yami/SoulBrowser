.class public final Lcom/google/android/gms/internal/cast/zzo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# static fields
.field public static final q:Lcom/google/android/gms/cast/internal/Logger;

.field public static r:J


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/zzax;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Z

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "ApplicationAnalyticsSession"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/zzo;->q:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sput-wide v0, Lcom/google/android/gms/internal/cast/zzo;->r:J

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzax;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzo;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzo;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzo;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzo;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzo;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzo;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzo;->n:I

    sget-wide v0, Lcom/google/android/gms/internal/cast/zzo;->r:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzo;->d:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzo;->e:I

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzo;->a:Lcom/google/android/gms/internal/cast/zzax;

    return-void
.end method
