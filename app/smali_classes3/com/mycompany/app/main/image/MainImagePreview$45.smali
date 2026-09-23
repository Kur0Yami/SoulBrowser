.class Lcom/mycompany/app/main/image/MainImagePreview$45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic f:Landroid/graphics/drawable/PictureDrawable;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$45;->i:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImagePreview$45;->c:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/image/MainImagePreview$45;->f:Landroid/graphics/drawable/PictureDrawable;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/image/MainImagePreview$45;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/main/image/MainImagePreview$45;->h:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$45;->f:Landroid/graphics/drawable/PictureDrawable;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$45;->c:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    :goto_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/mycompany/app/main/image/MainImagePreview$45;->g:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview$45;->i:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, v4, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->p(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$45;->h:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget-object v2, v4, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v1, v0

    .line 46
    :goto_1
    const/4 v2, 0x0

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    iget-object v1, v4, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v1, v3, v5}, Lcom/mycompany/app/main/MainUri;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget-object v5, v4, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v5, v3, v2, v1}, Lcom/mycompany/app/db/book/DbBookDown;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)J

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {v4, v0, v3}, Lcom/mycompany/app/main/image/MainImagePreview;->c1(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    sget-boolean v1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 71
    .line 72
    invoke-virtual {v4, v0, v2}, Lcom/mycompany/app/main/image/MainImagePreview;->c1(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
