.class Lcom/mycompany/app/dialog/DialogCapture$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$8;->a:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$8;->a:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->J:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->d()V

    .line 9
    .line 10
    .line 11
    if-le p2, p3, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    :goto_0
    iget v1, p1, Lcom/mycompany/app/dialog/DialogCapture;->B:I

    .line 17
    .line 18
    if-eq v1, v0, :cond_2

    .line 19
    .line 20
    iput v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->B:I

    .line 21
    .line 22
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->J:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogCapture;->I:Lcom/mycompany/app/view/MyAreaView;

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    :goto_1
    return-void

    .line 32
    :cond_3
    iget v4, p1, Lcom/mycompany/app/dialog/DialogCapture;->C:I

    .line 33
    .line 34
    if-eqz v4, :cond_6

    .line 35
    .line 36
    iget v5, p1, Lcom/mycompany/app/dialog/DialogCapture;->D:I

    .line 37
    .line 38
    if-nez v5, :cond_4

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_4
    const/4 v8, 0x0

    .line 42
    move v6, p2

    .line 43
    move v7, p3

    .line 44
    move v2, p2

    .line 45
    move v3, p3

    .line 46
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/view/MyAreaView;->d(IIIIIIZ)Z

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogCapture;->I:Lcom/mycompany/app/view/MyAreaView;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyAreaView;->a()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_5

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    goto :goto_2

    .line 59
    :cond_5
    const/4 p2, 0x4

    .line 60
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_6
    :goto_3
    const/16 p1, 0x8

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
