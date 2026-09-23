.class Lcom/mycompany/app/main/MainListAdapter2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListAdapter2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter2$1;->a:Lcom/mycompany/app/main/MainListAdapter2;

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
    if-eqz p1, :cond_8

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    instance-of v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    check-cast p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 19
    .line 20
    iget v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 21
    .line 22
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 23
    .line 24
    if-eq v0, v1, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 28
    .line 29
    if-nez v0, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_6

    .line 37
    .line 38
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 39
    .line 40
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 41
    .line 42
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 43
    .line 44
    iget-object v3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/mycompany/app/main/MainListAdapter2$1;->a:Lcom/mycompany/app/main/MainListAdapter2;

    .line 47
    .line 48
    iget-object v5, v4, Lcom/mycompany/app/main/MainListAdapter2;->t:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    if-nez v5, :cond_5

    .line 51
    .line 52
    const-string v5, "\\p{Punct}"

    .line 53
    .line 54
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iput-object v5, v4, Lcom/mycompany/app/main/MainListAdapter2;->t:Ljava/util/regex/Pattern;

    .line 59
    .line 60
    :cond_5
    iget-object v4, v4, Lcom/mycompany/app/main/MainListAdapter2;->t:Ljava/util/regex/Pattern;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->s()V

    .line 68
    .line 69
    .line 70
    :cond_6
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 71
    .line 72
    const/4 v1, 0x4

    .line 73
    if-ne v0, v1, :cond_7

    .line 74
    .line 75
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 76
    .line 77
    const v1, -0x70708

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 81
    .line 82
    .line 83
    :cond_7
    iget-object v0, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p2, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 92
    .line 93
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    .line 95
    .line 96
    :cond_8
    :goto_0
    return-void
.end method
