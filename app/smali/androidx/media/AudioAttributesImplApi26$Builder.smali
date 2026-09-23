.class Landroidx/media/AudioAttributesImplApi26$Builder;
.super Landroidx/media/AudioAttributesImplApi21$Builder;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesImplApi26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# virtual methods
.method public final a()Landroidx/media/AudioAttributesImpl$Builder;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/media/AudioAttributesImplApi21$Builder;->a:Landroid/media/AudioAttributes$Builder;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final b()Landroidx/media/AudioAttributesImplApi21$Builder;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/media/AudioAttributesImplApi21$Builder;->a:Landroid/media/AudioAttributes$Builder;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final build()Landroidx/media/AudioAttributesImpl;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media/AudioAttributesImplApi26;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media/AudioAttributesImplApi21$Builder;->a:Landroid/media/AudioAttributes$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Landroidx/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
