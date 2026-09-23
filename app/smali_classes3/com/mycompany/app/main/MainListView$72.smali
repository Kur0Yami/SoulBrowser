.class Lcom/mycompany/app/main/MainListView$72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListAdapter$ListRectListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$72;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$72;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->K()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/mycompany/app/main/MainListAdapter;->j:[Z

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    if-ltz p1, :cond_2

    .line 17
    .line 18
    array-length v3, v2

    .line 19
    if-lt p1, v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    aget-boolean v2, v2, p1

    .line 23
    .line 24
    xor-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    invoke-virtual {v1, p1, v2}, Lcom/mycompany/app/main/MainListAdapter;->y(IZ)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->a0()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->c0()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
