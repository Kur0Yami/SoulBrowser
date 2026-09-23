.class Lcom/mycompany/app/dialog/DialogNewsSearch$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogNewsSearch$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsSearch$8;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8$1;->f:Lcom/mycompany/app/dialog/DialogNewsSearch$8;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8$1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8$1;->f:Lcom/mycompany/app/dialog/DialogNewsSearch$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsSearch$8;->a:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8$1;->c:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
