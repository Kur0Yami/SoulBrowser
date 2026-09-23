.class Lcom/mycompany/app/web/WebViewActivity$458;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$458;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$458;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->o()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->W(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->y:Z

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->L9(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
