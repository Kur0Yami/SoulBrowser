.class Lcom/mycompany/app/dialog/DialogNewsSearch$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogNewsSearch$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsSearch$8;Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8$2;->f:Lcom/mycompany/app/dialog/DialogNewsSearch$8;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8$2;->c:Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8$2;->f:Lcom/mycompany/app/dialog/DialogNewsSearch$8;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsSearch$8;->a:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8$2;->c:Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 7
    .line 8
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/dialog/DialogNewsSearch;->C(Lcom/mycompany/app/dialog/DialogNewsSearch;ZLcom/mycompany/app/web/WebSearchAdapter$SearchItem;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsSearch$8;->a:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->i0:Z

    .line 15
    .line 16
    return-void
.end method
