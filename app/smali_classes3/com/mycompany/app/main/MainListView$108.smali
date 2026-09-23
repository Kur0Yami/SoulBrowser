.class Lcom/mycompany/app/main/MainListView$108;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$108;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView$108;->a:Lcom/mycompany/app/main/MainListView;

    .line 12
    .line 13
    iput-boolean v0, v2, Lcom/mycompany/app/main/MainListView;->m0:Z

    .line 14
    .line 15
    invoke-virtual {v2, p1, p2, v1}, Lcom/mycompany/app/main/MainListView;->L(JZ)V

    .line 16
    .line 17
    .line 18
    iget p1, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 19
    .line 20
    const/16 p2, 0x18

    .line 21
    .line 22
    if-ne p1, p2, :cond_2

    .line 23
    .line 24
    iget-object p1, v2, Lcom/mycompany/app/main/MainListView;->y1:Lcom/mycompany/app/main/MainListView$DcChangeListener;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance p2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p4, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {p1, p2}, Lcom/mycompany/app/main/MainListView$DcChangeListener;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_1
    return-void
.end method
