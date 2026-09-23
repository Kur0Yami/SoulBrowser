.class Lcom/mycompany/app/main/MainAreaAdapter$1;
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
    iput-object p1, p0, Lcom/mycompany/app/main/MainAreaAdapter$1;->c:Lcom/mycompany/app/main/MainAreaAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainAreaAdapter$1;->c:Lcom/mycompany/app/main/MainAreaAdapter;

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
    :goto_2
    return-void

    .line 47
    :cond_6
    iget-object v2, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 48
    .line 49
    if-eqz v2, :cond_7

    .line 50
    .line 51
    sget-boolean v3, Lcom/mycompany/app/pref/PrefRead;->J:Z

    .line 52
    .line 53
    if-eqz v3, :cond_7

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    sput-boolean v3, Lcom/mycompany/app/pref/PrefRead;->J:Z

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "mNotiAre3"

    .line 63
    .line 64
    sget-boolean v4, Lcom/mycompany/app/pref/PrefRead;->J:Z

    .line 65
    .line 66
    const/16 v5, 0x8

    .line 67
    .line 68
    invoke-static {v5, v2, v3, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p1, Lcom/mycompany/app/main/MainAreaAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 72
    .line 73
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_7
    iget-object p1, v0, Lcom/mycompany/app/main/MainAreaAdapter;->e:Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;

    .line 77
    .line 78
    iget v0, v1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->f:I

    .line 79
    .line 80
    iget-object v1, v1, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {p1, v0, v1}, Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;->a(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
