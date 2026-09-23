.class Lcom/mycompany/app/main/image/MainImagePreview$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$4;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$4;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 9
    .line 10
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$5;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$5;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->v1:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->i1:Lcom/mycompany/app/view/MyButtonImage;

    .line 23
    .line 24
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$6;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$6;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->i1:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$7;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$7;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$8;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$8;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->l1:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$9;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$9;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->m1:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$10;

    .line 73
    .line 74
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$10;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$11;

    .line 83
    .line 84
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$11;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 91
    .line 92
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$12;

    .line 93
    .line 94
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$12;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySizeImage;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 101
    .line 102
    if-nez v1, :cond_2

    .line 103
    .line 104
    :goto_1
    return-void

    .line 105
    :cond_2
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$13;

    .line 106
    .line 107
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$13;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    return-void
.end method
