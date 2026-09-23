.class Lcom/mycompany/app/main/MainListView$81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final synthetic b:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$81;->b:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView$81;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$81;->b:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->C()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$81;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$81;->b:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    if-eq p2, v1, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    if-eq p2, v2, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->y1:Lcom/mycompany/app/main/MainListView$DcChangeListener;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p2, p1}, Lcom/mycompany/app/main/MainListView$DcChangeListener;->a(ILcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return v1

    .line 21
    :cond_1
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainListView;->i(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainListView;->g(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, p2, p1, v2}, Lcom/mycompany/app/main/MainListView;->d(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    return v1
.end method
