.class Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$68$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$68$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$68$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$68$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$68$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$68;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview$68;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/main/image/MainImagePreview;->g2:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->g2:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview$68;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 25
    .line 26
    sget v3, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 27
    .line 28
    const-wide/16 v5, 0x0

    .line 29
    .line 30
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 31
    .line 32
    const/high16 v4, 0x3f800000    # 1.0f

    .line 33
    .line 34
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/main/MainUtil;->g4(Landroid/view/View;IFJLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$68;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->A0(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$68;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->y2:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1$1;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$68$1$1$1;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$68$1$1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
