.class Lcom/mycompany/app/main/MainLangAdapter$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainLangAdapter$2$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainLangAdapter$2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainLangAdapter$2$1$1;->c:Lcom/mycompany/app/main/MainLangAdapter$2$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter$2$1$1;->c:Lcom/mycompany/app/main/MainLangAdapter$2$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainLangAdapter$2$1;->c:Lcom/mycompany/app/main/MainLangAdapter$2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainLangAdapter$2;->f:Lcom/mycompany/app/main/MainLangAdapter;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/main/MainLangAdapter;->j:Lcom/mycompany/app/main/MainLangAdapter$MainLangListener;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/mycompany/app/main/MainLangAdapter$MainLangListener;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainLangAdapter$2;->f:Lcom/mycompany/app/main/MainLangAdapter;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/main/MainLangAdapter$2;->f:Lcom/mycompany/app/main/MainLangAdapter;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainLangAdapter;->m:Z

    .line 23
    .line 24
    return-void
.end method
