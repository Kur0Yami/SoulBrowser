.class Lcom/mycompany/app/web/WebViewActivity$97;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$97;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$97;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Md:Lcom/mycompany/app/web/WebNestFrame;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Nd:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Od:Z

    .line 8
    .line 9
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Pd:Z

    .line 10
    .line 11
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Qd:Z

    .line 12
    .line 13
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Rd:Z

    .line 14
    .line 15
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Sd:Z

    .line 16
    .line 17
    iget-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->Td:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 18
    .line 19
    iget-boolean v9, v0, Lcom/mycompany/app/web/WebViewActivity;->Ud:Z

    .line 20
    .line 21
    iget-boolean v10, v0, Lcom/mycompany/app/web/WebViewActivity;->Vd:Z

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    iput-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->Md:Lcom/mycompany/app/web/WebNestFrame;

    .line 25
    .line 26
    iput-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->Nd:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->Td:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 29
    .line 30
    iget-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 31
    .line 32
    const/4 v12, 0x0

    .line 33
    invoke-virtual {v0, v11, v12}, Lcom/mycompany/app/web/WebViewActivity;->N8(Lcom/mycompany/app/web/WebNestView;I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Wd:Lcom/mycompany/app/web/WebNestFrame;

    .line 37
    .line 38
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Xd:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Yd:Z

    .line 41
    .line 42
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Zd:Z

    .line 43
    .line 44
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->ae:Z

    .line 45
    .line 46
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->be:Z

    .line 47
    .line 48
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->ce:Z

    .line 49
    .line 50
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->de:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 51
    .line 52
    iput-boolean v9, v0, Lcom/mycompany/app/web/WebViewActivity;->ee:Z

    .line 53
    .line 54
    iput-boolean v10, v0, Lcom/mycompany/app/web/WebViewActivity;->fe:Z

    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$98;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$98;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method
