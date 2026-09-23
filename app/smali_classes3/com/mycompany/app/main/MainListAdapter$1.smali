.class Lcom/mycompany/app/main/MainListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$1;->a:Lcom/mycompany/app/main/MainListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter$1;->a:Lcom/mycompany/app/main/MainListAdapter;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/main/MainListAdapter;->e:I

    .line 4
    .line 5
    if-eqz p1, :cond_9

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    instance-of v2, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_2
    check-cast p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 24
    .line 25
    iget v2, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 26
    .line 27
    iget v3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 28
    .line 29
    if-eq v2, v3, :cond_3

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    iget-object v2, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->isActivated()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_5

    .line 39
    .line 40
    const/16 v2, 0x12

    .line 41
    .line 42
    if-ne v1, v2, :cond_4

    .line 43
    .line 44
    iget-object v2, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 45
    .line 46
    iget v3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 47
    .line 48
    iget v4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 49
    .line 50
    iget-object v5, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter;->r()Ljava/util/regex/Pattern;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 61
    .line 62
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 63
    .line 64
    iget v3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 65
    .line 66
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->s()V

    .line 72
    .line 73
    .line 74
    :cond_5
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 75
    .line 76
    const/4 v2, 0x4

    .line 77
    if-ne v0, v2, :cond_6

    .line 78
    .line 79
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 80
    .line 81
    const v2, -0x70708

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 85
    .line 86
    .line 87
    :cond_6
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 88
    .line 89
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    const/16 v0, 0x20

    .line 96
    .line 97
    if-ne v1, v0, :cond_8

    .line 98
    .line 99
    iget-boolean p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->O:Z

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    iget-object p1, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_7
    iget-object p1, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 113
    .line 114
    .line 115
    :cond_8
    :goto_1
    iget-object p1, p2, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 116
    .line 117
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    .line 119
    .line 120
    :cond_9
    :goto_2
    return-void
.end method
