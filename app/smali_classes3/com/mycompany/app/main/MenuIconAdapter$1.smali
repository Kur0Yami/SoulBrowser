.class Lcom/mycompany/app/main/MenuIconAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MenuIconAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MenuIconAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter$1;->c:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_7

    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/mycompany/app/main/MenuIconAdapter$1;->c:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MenuIconAdapter;->x(I)Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/main/MenuIconAdapter;->i:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    iget v4, v1, Lcom/mycompany/app/main/MenuIconAdapter;->f:I

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    if-ne v4, v5, :cond_4

    .line 44
    .line 45
    iget-object p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 46
    .line 47
    iget v1, v2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->b:I

    .line 48
    .line 49
    invoke-interface {v3, p1, v0, v1}, Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;->b(Landroid/view/View;II)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    const/4 v6, 0x2

    .line 54
    if-ne v4, v6, :cond_5

    .line 55
    .line 56
    iget-object p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 57
    .line 58
    iget v1, v2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->c:I

    .line 59
    .line 60
    invoke-interface {v3, p1, v0, v1}, Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;->b(Landroid/view/View;II)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_5
    iget-boolean v3, v1, Lcom/mycompany/app/main/MenuIconAdapter;->l:Z

    .line 65
    .line 66
    if-eqz v3, :cond_6

    .line 67
    .line 68
    iget-boolean v3, v1, Lcom/mycompany/app/main/MenuIconAdapter;->h:Z

    .line 69
    .line 70
    if-eqz v3, :cond_6

    .line 71
    .line 72
    iget v3, v2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 73
    .line 74
    if-ne v3, v5, :cond_6

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    iput-boolean v3, v1, Lcom/mycompany/app/main/MenuIconAdapter;->l:Z

    .line 78
    .line 79
    iget-object v4, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->v:Lcom/mycompany/app/view/MyIconView;

    .line 80
    .line 81
    invoke-virtual {v4, v3, v5}, Lcom/mycompany/app/view/MyIconView;->x(ZZ)Z

    .line 82
    .line 83
    .line 84
    :cond_6
    iget-object v1, v1, Lcom/mycompany/app/main/MenuIconAdapter;->i:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 87
    .line 88
    iget v2, v2, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;->a:I

    .line 89
    .line 90
    invoke-interface {v1, p1, v0, v2}, Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;->b(Landroid/view/View;II)V

    .line 91
    .line 92
    .line 93
    :cond_7
    :goto_1
    return-void
.end method
