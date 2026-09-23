.class Lcom/mycompany/app/dialog/DialogSetDark$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetDark;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$15;->a:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetDark;->y0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark$15;->a:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDark;->E()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->r0:Z

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->z0:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_clear_site

    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/mycompany/app/db/book/DbBookTheme;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_clear_site
    const/4 v2, 0x2

    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogSetDark;->s0:Z

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/16 v5, 0x46

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetDark;->t0:I

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    .line 23
    .line 24
    if-ne v3, v2, :cond_0

    .line 25
    .line 26
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogSetDark;->v0:Z

    .line 27
    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetDark;->w0:I

    .line 31
    .line 32
    if-eq v3, v5, :cond_1

    .line 33
    .line 34
    :cond_0
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->s0:Z

    .line 35
    .line 36
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->t0:I

    .line 37
    .line 38
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->A0:I

    .line 39
    .line 40
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetDark;->v0:Z

    .line 41
    .line 42
    iput v5, v0, Lcom/mycompany/app/dialog/DialogSetDark;->w0:I

    .line 43
    .line 44
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetDark;->r0:Z

    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogSetDark;->F(Z)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    instance-of v2, v1, Lcom/mycompany/app/web/WebViewActivity;

    if-eqz v2, :cond_reset_done

    check-cast v1, Lcom/mycompany/app/web/WebViewActivity;

    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    if-eqz v1, :cond_reset_done

    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->syncSiteDark()V

    :cond_reset_done
    .line 47
    .line 48
    .line 49
    return-void
.end method
