.class public final Lcom/google/android/gms/cast/framework/CastOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/CastOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/google/android/gms/cast/LaunchOptions;

.field public final d:Z

.field public final e:Z

.field public final f:D

.field public final g:Ljava/util/ArrayList;

.field public final h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->c:Lcom/google/android/gms/cast/LaunchOptions;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->d:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->e:Z

    .line 22
    .line 23
    const-wide v1, 0x3fa99999a0000000L    # 0.05000000074505806

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iput-wide v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->f:D

    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->g:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/CastOptions$Builder;->h:Z

    .line 38
    .line 39
    return-void
.end method
