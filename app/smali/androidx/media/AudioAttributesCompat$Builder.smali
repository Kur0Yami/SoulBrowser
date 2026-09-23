.class public Landroidx/media/AudioAttributesCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/media/AudioAttributesImpl$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroidx/media/AudioAttributesCompat;->b:I

    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/media/AudioAttributesImplApi26$Builder;

    .line 13
    .line 14
    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi21$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->a:Landroidx/media/AudioAttributesImpl$Builder;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Landroidx/media/AudioAttributesImplApi21$Builder;

    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi21$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->a:Landroidx/media/AudioAttributesImpl$Builder;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->a:Landroidx/media/AudioAttributesImpl$Builder;

    .line 2
    .line 3
    check-cast v0, Landroidx/media/AudioAttributesImplApi21$Builder;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media/AudioAttributesImplApi21$Builder;->a:Landroid/media/AudioAttributes$Builder;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 8
    .line 9
    .line 10
    return-void
.end method
