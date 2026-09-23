.class Lcom/mycompany/app/dialog/DialogTransLang$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTransLang$22;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang$22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$22$1;->c:Lcom/mycompany/app/dialog/DialogTransLang$22;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$22$1;->c:Lcom/mycompany/app/dialog/DialogTransLang$22;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTransLang$22;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->z0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->B0:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTransLang;->G(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTransLang;->z0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
