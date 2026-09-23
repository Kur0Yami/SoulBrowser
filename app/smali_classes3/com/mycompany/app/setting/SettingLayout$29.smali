.class Lcom/mycompany/app/setting/SettingLayout$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/setting/SettingLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$29;->f:Lcom/mycompany/app/setting/SettingLayout;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/setting/SettingLayout$29;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingLayout;->J2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$29;->f:Lcom/mycompany/app/setting/SettingLayout;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingLayout;->M0()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingLayout$29;->c:Z

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/mycompany/app/setting/SettingLayout;->D0(Lcom/mycompany/app/setting/SettingLayout;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
