.class Lcom/mycompany/app/main/MainListView2$52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$52;->c:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView2$52;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainListView2$52;->b:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$52;->c:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->g()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2$52;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v2, v1}, Lcom/mycompany/app/main/MainListView2;->B(IZZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v1, 0x3

    .line 22
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView2$52;->b:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v0, v2, p1, v1}, Lcom/mycompany/app/main/MainListView2;->d(Lcom/mycompany/app/main/MainListView2;Ljava/util/List;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
