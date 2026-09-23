.class public final Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public final d:Landroid/graphics/BitmapFactory$Options;

.field public final e:Z

.field public final f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->a:Z

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->b:Z

    .line 11
    .line 12
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->c:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->c:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->d:Landroid/graphics/BitmapFactory$Options;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->d:Landroid/graphics/BitmapFactory$Options;

    .line 19
    .line 20
    iget-boolean v0, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->e:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->e:Z

    .line 23
    .line 24
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 27
    .line 28
    iget-boolean p1, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->g:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->g:Z

    .line 31
    .line 32
    return-void
.end method
