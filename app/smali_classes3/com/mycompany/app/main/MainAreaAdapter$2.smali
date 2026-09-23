.class Lcom/mycompany/app/main/MainAreaAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainAreaAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainAreaAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainAreaAdapter$2;->c:Lcom/mycompany/app/main/MainAreaAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainAreaAdapter$2;->c:Lcom/mycompany/app/main/MainAreaAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainAreaAdapter;->e:Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-interface {v1}, Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    if-nez p1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    instance-of v1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;

    .line 26
    .line 27
    if-nez v1, :cond_4

    .line 28
    .line 29
    :goto_0
    const/4 p1, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_4
    check-cast p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;

    .line 32
    .line 33
    :goto_1
    if-nez p1, :cond_5

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainAreaAdapter;->v(I)Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_6

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_6
    iget-object p1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->w:Lcom/mycompany/app/view/MyButtonCheck;

    .line 48
    .line 49
    if-nez p1, :cond_7

    .line 50
    .line 51
    :goto_2
    return-void

    .line 52
    :cond_7
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->i:Z

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    xor-int/2addr v2, v3

    .line 56
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->i:Z

    .line 57
    .line 58
    invoke-virtual {p1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 59
    .line 60
    .line 61
    iget-object p1, v0, Lcom/mycompany/app/main/MainAreaAdapter;->e:Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;->c()V

    .line 64
    .line 65
    .line 66
    return-void
.end method
