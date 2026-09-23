.class Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1;->c:Lcom/mycompany/app/quick/QuickSearch$11;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickSearch;->z:Lcom/mycompany/app/quick/QuickAdapter;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-boolean v3, v1, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 20
    .line 21
    iput-boolean v3, v2, Lcom/mycompany/app/quick/QuickAdapter;->h:Z

    .line 22
    .line 23
    iget-boolean v1, v1, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 24
    .line 25
    iput-boolean v1, v2, Lcom/mycompany/app/quick/QuickAdapter;->i:Z

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/mycompany/app/quick/QuickAdapter;->V()V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1;->c:Lcom/mycompany/app/quick/QuickSearch$11;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch;->z:Lcom/mycompany/app/quick/QuickAdapter;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11$1;->c:Lcom/mycompany/app/quick/QuickSearch$11;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSearch$11;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickSearch;->s()V

    .line 56
    .line 57
    .line 58
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1$1;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1$1;->c:Lcom/mycompany/app/quick/QuickSearch$11$1;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11$1;->c:Lcom/mycompany/app/quick/QuickSearch$11;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickSearch$11;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickSearch;->V:Z

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSearch;->q()V

    .line 72
    .line 73
    .line 74
    return-void
.end method
