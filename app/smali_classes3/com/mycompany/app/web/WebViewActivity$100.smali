.class Lcom/mycompany/app/web/WebViewActivity$100;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$100;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$100;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ne:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->oe:Z

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->pe:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 8
    .line 9
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->qe:Z

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->pe:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/mycompany/app/web/WebNestFrame;->I()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->n7()V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-virtual {v0, v5, v5}, Lcom/mycompany/app/web/WebViewActivity;->b7(IZ)V

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->i9:Z

    .line 34
    .line 35
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->re:Z

    .line 36
    .line 37
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->se:Z

    .line 38
    .line 39
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->te:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 40
    .line 41
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->ue:Z

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Kb:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$101;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$101;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->K6(Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->W1()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
