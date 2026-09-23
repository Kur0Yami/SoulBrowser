.class Lcom/mycompany/app/image/ImageViewPageScroll$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$37;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$37;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->J0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 9

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    move p2, p1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 8
    .line 9
    if-ne p2, v0, :cond_1

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    sput-boolean p2, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$37;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    const-string v3, "mReverse"

    .line 20
    .line 21
    invoke-static {v2, v1, v3, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object p2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    sget-boolean p2, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 33
    .line 34
    xor-int/2addr p2, p1

    .line 35
    iput-boolean p2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    sget-boolean p2, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 39
    .line 40
    iput-boolean p2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, p1}, Lcom/mycompany/app/image/ImageViewPageScroll;->n1(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->S:Lcom/mycompany/app/image/ImageViewControl;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget-boolean v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 50
    .line 51
    iget v3, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->v:I

    .line 52
    .line 53
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->p:I

    .line 54
    .line 55
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 56
    .line 57
    iget v6, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 58
    .line 59
    iget v7, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 60
    .line 61
    iget v8, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 62
    .line 63
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/image/ImageViewControl;->u(ZIILcom/mycompany/app/compress/Compress;III)V

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->k1()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/mycompany/app/image/ImageViewPageScroll;->W0(Z)V

    .line 70
    .line 71
    .line 72
    return p1
.end method
