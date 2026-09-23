.class Lcom/mycompany/app/main/MainListView$95;
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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$95;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView$95;->a:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3, v0, v3, v1}, Lcom/mycompany/app/main/MainListView;->d0(ZIZZ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView;->w()V

    .line 10
    .line 11
    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView;->N()V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lcom/mycompany/app/main/MainListView$95;->a:Lcom/mycompany/app/main/MainListView;

    .line 22
    .line 23
    iget v0, v4, Lcom/mycompany/app/main/MainListView;->d:I

    .line 24
    .line 25
    const/16 v1, 0x1b

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {v4, p1, p1, p3}, Lcom/mycompany/app/main/MainListView;->w0(Ljava/util/List;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/4 v5, 0x0

    .line 35
    move-wide v8, p1

    .line 36
    move-object v6, p3

    .line 37
    move-object v7, p4

    .line 38
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/main/MainListView;->j(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    move-wide v8, p1

    .line 43
    invoke-virtual {v2, v8, v9, v3}, Lcom/mycompany/app/main/MainListView;->L(JZ)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
