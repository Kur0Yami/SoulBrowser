.class Lcom/mycompany/app/dialog/DialogNewsSearch$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsSearch$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsSearch$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$4$1;->c:Lcom/mycompany/app/dialog/DialogNewsSearch$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$4$1;->c:Lcom/mycompany/app/dialog/DialogNewsSearch$4;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsSearch$4;->c:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v1, v3, v2}, Lcom/mycompany/app/dialog/DialogNewsSearch;->C(Lcom/mycompany/app/dialog/DialogNewsSearch;ZLcom/mycompany/app/web/WebSearchAdapter$SearchItem;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsSearch$4;->c:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 11
    .line 12
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->i0:Z

    .line 13
    .line 14
    return-void
.end method
