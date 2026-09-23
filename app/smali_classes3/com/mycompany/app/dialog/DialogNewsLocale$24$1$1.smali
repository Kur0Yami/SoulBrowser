.class Lcom/mycompany/app/dialog/DialogNewsLocale$24$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale$24$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale$24$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$24$1$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$24$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$24$1$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$24$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$24$1;->c:Lcom/mycompany/app/dialog/DialogNewsLocale$24;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$24;->a:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->w0:Z

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogNewsLocale;->G(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$24;->a:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$24;->a:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->F()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
