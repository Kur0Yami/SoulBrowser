.class Lcom/mycompany/app/main/MainListView$79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/main/MainItem$GroupItem;

.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;ILcom/mycompany/app/main/MainItem$GroupItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$79;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/main/MainListView$79;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainListView$79;->b:Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$79;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->C()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$79;->b:Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView$79;->c:Lcom/mycompany/app/main/MainListView;

    .line 6
    .line 7
    iget v2, p0, Lcom/mycompany/app/main/MainListView$79;->a:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq p2, p1, :cond_4

    .line 11
    .line 12
    const/16 p1, 0x9

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-eq p2, p1, :cond_2

    .line 16
    .line 17
    const/16 p1, 0x10

    .line 18
    .line 19
    if-eq p2, p1, :cond_1

    .line 20
    .line 21
    const/16 p1, 0x11

    .line 22
    .line 23
    if-eq p2, p1, :cond_0

    .line 24
    .line 25
    return v4

    .line 26
    :cond_0
    invoke-static {v1, v2, v4}, Lcom/mycompany/app/main/MainListView;->c(Lcom/mycompany/app/main/MainListView;IZ)V

    .line 27
    .line 28
    .line 29
    return v3

    .line 30
    :cond_1
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainListView;->c(Lcom/mycompany/app/main/MainListView;IZ)V

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    iget-object p1, v1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p1, v2}, Lcom/mycompany/app/main/MainListAdapter;->q(I)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, p1, p2, v4}, Lcom/mycompany/app/main/MainListView;->d(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    return v3

    .line 49
    :cond_4
    iget-object p1, v1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 50
    .line 51
    if-nez p1, :cond_5

    .line 52
    .line 53
    :goto_0
    return v3

    .line 54
    :cond_5
    iget-boolean p2, v1, Lcom/mycompany/app/main/MainListView;->e:Z

    .line 55
    .line 56
    if-eqz p2, :cond_6

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lcom/mycompany/app/main/MainListAdapter;->q(I)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p2, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, p1, p2, v3}, Lcom/mycompany/app/main/MainListView;->d(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    return v3

    .line 68
    :cond_6
    invoke-virtual {p1, v2}, Lcom/mycompany/app/main/MainListAdapter;->q(I)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainListView;->f(Lcom/mycompany/app/main/MainListView;Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    return v3
.end method
