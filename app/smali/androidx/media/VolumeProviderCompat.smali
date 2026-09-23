.class public abstract Landroidx/media/VolumeProviderCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/VolumeProviderCompat$Api21Impl;,
        Landroidx/media/VolumeProviderCompat$Callback;,
        Landroidx/media/VolumeProviderCompat$ControlType;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:Landroidx/media/VolumeProviderCompat$Callback;

.field public f:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media/VolumeProviderCompat;->a:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/media/VolumeProviderCompat;->b:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media/VolumeProviderCompat;->d:I

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media/VolumeProviderCompat;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Landroid/media/VolumeProvider;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media/VolumeProviderCompat;->f:Landroid/media/VolumeProvider;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1e

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Landroidx/media/VolumeProviderCompat$1;

    .line 12
    .line 13
    iget v6, p0, Landroidx/media/VolumeProviderCompat;->d:I

    .line 14
    .line 15
    iget-object v7, p0, Landroidx/media/VolumeProviderCompat;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget v4, p0, Landroidx/media/VolumeProviderCompat;->a:I

    .line 18
    .line 19
    iget v5, p0, Landroidx/media/VolumeProviderCompat;->b:I

    .line 20
    .line 21
    move-object v3, p0

    .line 22
    invoke-direct/range {v2 .. v7}, Landroidx/media/VolumeProviderCompat$1;-><init>(Landroidx/media/VolumeProviderCompat;IIILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, v3, Landroidx/media/VolumeProviderCompat;->f:Landroid/media/VolumeProvider;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v3, p0

    .line 29
    new-instance v0, Landroidx/media/VolumeProviderCompat$2;

    .line 30
    .line 31
    iget v1, v3, Landroidx/media/VolumeProviderCompat;->b:I

    .line 32
    .line 33
    iget v2, v3, Landroidx/media/VolumeProviderCompat;->d:I

    .line 34
    .line 35
    iget v4, v3, Landroidx/media/VolumeProviderCompat;->a:I

    .line 36
    .line 37
    invoke-direct {v0, p0, v4, v1, v2}, Landroidx/media/VolumeProviderCompat$2;-><init>(Landroidx/media/VolumeProviderCompat;III)V

    .line 38
    .line 39
    .line 40
    iput-object v0, v3, Landroidx/media/VolumeProviderCompat;->f:Landroid/media/VolumeProvider;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v3, p0

    .line 44
    :goto_0
    iget-object v0, v3, Landroidx/media/VolumeProviderCompat;->f:Landroid/media/VolumeProvider;

    .line 45
    .line 46
    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/media/VolumeProviderCompat;->d:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media/VolumeProviderCompat;->a()Landroid/media/VolumeProvider;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Landroidx/media/VolumeProviderCompat$Api21Impl;->a(Landroid/media/VolumeProvider;I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media/VolumeProviderCompat;->e:Landroidx/media/VolumeProviderCompat$Callback;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/media/VolumeProviderCompat$Callback;->onVolumeChanged(Landroidx/media/VolumeProviderCompat;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
