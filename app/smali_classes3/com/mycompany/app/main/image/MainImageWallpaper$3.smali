.class Lcom/mycompany/app/main/image/MainImageWallpaper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageWallpaper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$3;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$3;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->j1:Lcom/mycompany/app/view/MySizeFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    sget v2, Lnet/kaki87/soul2/testing/R$string;->set_wallpaper:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    new-instance v2, Lcom/mycompany/app/main/image/MainImageWallpaper$4;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageWallpaper$4;-><init>(Lcom/mycompany/app/main/image/MainImageWallpaper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->o1:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    new-instance v2, Lcom/mycompany/app/main/image/MainImageWallpaper$5;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageWallpaper$5;-><init>(Lcom/mycompany/app/main/image/MainImageWallpaper;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/image/MainImageWallpaper$6;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageWallpaper$6;-><init>(Lcom/mycompany/app/main/image/MainImageWallpaper;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method
