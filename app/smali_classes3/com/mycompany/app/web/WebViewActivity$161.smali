.class Lcom/mycompany/app/web/WebViewActivity$161;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$161;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$161;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Cg:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_5

    .line 9
    .line 10
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sget-boolean v5, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 16
    .line 17
    if-eqz v5, :cond_3

    .line 18
    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    iget-object v1, v2, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v4, 0x2

    .line 31
    if-ge v1, v4, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget v2, v2, Lcom/mycompany/app/web/WebNestFrame;->p:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    if-ge v2, v1, :cond_4

    .line 39
    .line 40
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i9:Z

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v3, v2}, Lcom/mycompany/app/web/WebViewActivity;->k6(IZLcom/mycompany/app/web/WebViewActivity$PrevPageListener;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    if-eqz v1, :cond_4

    .line 49
    .line 50
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i9:Z

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/mycompany/app/web/WebNestView;->goForward()V

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_0
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->rc:Z

    .line 56
    .line 57
    return-void

    .line 58
    :cond_5
    :goto_1
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->rc:Z

    .line 59
    .line 60
    return-void
.end method
