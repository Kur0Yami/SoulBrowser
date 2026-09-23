.class Lcom/mycompany/app/dialog/DialogNewsSearch$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$7;->c:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$7;->c:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->a0:Landroid/content/Context;

    .line 11
    .line 12
    new-instance v9, Lcom/mycompany/app/dialog/DialogNewsSearch$8;

    .line 13
    .line 14
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogNewsSearch$8;-><init>(Lcom/mycompany/app/dialog/DialogNewsSearch;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x1

    .line 21
    const/4 v8, 0x2

    .line 22
    invoke-direct/range {v2 .. v9}, Lcom/mycompany/app/web/WebSearchAdapter2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->j0:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
