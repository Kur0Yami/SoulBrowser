.class public final enum Lj$/time/temporal/d;
.super Lj$/time/temporal/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "DAY_OF_QUARTER"

    const/4 v1, 0x0

    .line 290
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lj$/time/temporal/n;)Z
    .locals 1

    .line 306
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->c(Lj$/time/temporal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->c(Lj$/time/temporal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 307
    invoke-interface {p1, v0}, Lj$/time/temporal/n;->c(Lj$/time/temporal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/j;->a:Lj$/time/temporal/h;

    .line 736
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->G(Lj$/time/temporal/n;)Lj$/time/chrono/m;

    move-result-object p1

    sget-object v0, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-interface {p1, v0}, Lj$/time/chrono/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lj$/time/temporal/n;)Lj$/time/temporal/v;
    .locals 9

    .line 311
    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->d(Lj$/time/temporal/n;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    sget-object v0, Lj$/time/temporal/h;->QUARTER_OF_YEAR:Lj$/time/temporal/h;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->y(Lj$/time/temporal/r;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x5b

    if-nez v4, :cond_1

    .line 316
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->y(Lj$/time/temporal/r;)J

    move-result-wide v0

    .line 317
    sget-object p1, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-virtual {p1, v0, v1}, Lj$/time/chrono/t;->J(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v2, v3, v5, v6}, Lj$/time/temporal/v;->f(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x5a

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/v;->f(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v7, 0x2

    cmp-long p1, v0, v7

    if-nez p1, :cond_2

    .line 319
    invoke-static {v2, v3, v5, v6}, Lj$/time/temporal/v;->f(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v4, 0x3

    cmp-long p1, v0, v4

    if-eqz p1, :cond_4

    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-nez p1, :cond_3

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {p0}, Lj$/time/temporal/d;->range()Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const-wide/16 v0, 0x5c

    .line 321
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/v;->f(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 312
    :cond_5
    new-instance p1, Lj$/time/temporal/u;

    const-string v0, "Unsupported field: DayOfQuarter"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 312
    throw p1
.end method

.method public final h(Ljava/util/Map;Lj$/time/format/d0;Lj$/time/format/e0;)Lj$/time/temporal/n;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 346
    sget-object v3, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 347
    sget-object v5, Lj$/time/temporal/h;->QUARTER_OF_YEAR:Lj$/time/temporal/h;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v4, :cond_6

    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 351
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 669
    iget-object v4, v3, Lj$/time/temporal/a;->b:Lj$/time/temporal/v;

    .line 732
    invoke-virtual {v4, v7, v8, v3}, Lj$/time/temporal/v;->a(JLj$/time/temporal/r;)I

    move-result v4

    .line 352
    sget-object v7, Lj$/time/temporal/h;->DAY_OF_QUARTER:Lj$/time/temporal/h;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 590
    sget-object v9, Lj$/time/temporal/j;->a:Lj$/time/temporal/h;

    .line 736
    invoke-static/range {p2 .. p2}, Lj$/com/android/tools/r8/a;->G(Lj$/time/temporal/n;)Lj$/time/chrono/m;

    move-result-object v9

    sget-object v10, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-interface {v9, v10}, Lj$/time/chrono/m;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 355
    sget-object v9, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    const/4 v10, 0x3

    const-wide/16 v11, 0x1

    const/4 v13, 0x1

    if-ne v2, v9, :cond_1

    .line 356
    invoke-static {v4, v13, v13}, Lj$/time/g;->U(III)Lj$/time/g;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14, v11, v12}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v13

    int-to-long v9, v10

    .line 0
    invoke-static {v13, v14, v9, v10}, Lj$/com/android/tools/r8/a;->O(JJ)J

    move-result-wide v9

    .line 356
    invoke-virtual {v2, v9, v10}, Lj$/time/g;->Z(J)Lj$/time/g;

    move-result-object v2

    .line 357
    invoke-static {v7, v8, v11, v12}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 359
    :cond_1
    invoke-interface {v5}, Lj$/time/temporal/r;->range()Lj$/time/temporal/v;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15, v5}, Lj$/time/temporal/v;->a(JLj$/time/temporal/r;)I

    move-result v6

    sub-int/2addr v6, v13

    mul-int/2addr v6, v10

    add-int/2addr v6, v13

    .line 360
    invoke-static {v4, v6, v13}, Lj$/time/g;->U(III)Lj$/time/g;

    move-result-object v4

    cmp-long v6, v7, v11

    if-ltz v6, :cond_2

    const-wide/16 v9, 0x5a

    cmp-long v6, v7, v9

    if-lez v6, :cond_4

    .line 362
    :cond_2
    sget-object v6, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    if-ne v2, v6, :cond_3

    .line 363
    invoke-virtual {v0, v4}, Lj$/time/temporal/d;->g(Lj$/time/temporal/n;)Lj$/time/temporal/v;

    move-result-object v2

    invoke-virtual {v2, v7, v8, v0}, Lj$/time/temporal/v;->b(JLj$/time/temporal/r;)V

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {v0}, Lj$/time/temporal/d;->range()Lj$/time/temporal/v;

    move-result-object v2

    invoke-virtual {v2, v7, v8, v0}, Lj$/time/temporal/v;->b(JLj$/time/temporal/r;)V

    :cond_4
    :goto_0
    sub-long/2addr v7, v11

    move-object v2, v4

    move-wide v6, v7

    .line 370
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-virtual {v2, v6, v7}, Lj$/time/g;->Y(J)Lj$/time/g;

    move-result-object v1

    return-object v1

    .line 591
    :cond_5
    new-instance v1, Lj$/time/b;

    const-string v2, "Resolve requires IsoChronology"

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 591
    throw v1

    :cond_6
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public final i(Lj$/time/temporal/n;)J
    .locals 4

    .line 327
    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->d(Lj$/time/temporal/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->g(Lj$/time/temporal/r;)I

    move-result v0

    .line 331
    sget-object v1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/n;->g(Lj$/time/temporal/r;)I

    move-result v1

    .line 332
    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Lj$/time/temporal/n;->y(Lj$/time/temporal/r;)J

    move-result-wide v2

    add-int/lit8 v1, v1, -0x1

    .line 333
    div-int/lit8 v1, v1, 0x3

    sget-object p1, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-virtual {p1, v2, v3}, Lj$/time/chrono/t;->J(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v1, p1

    sget-object p1, Lj$/time/temporal/h;->a:[I

    aget p1, p1, v1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 328
    :cond_1
    new-instance p1, Lj$/time/temporal/u;

    const-string v0, "Unsupported field: DayOfQuarter"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 328
    throw p1
.end method

.method public final l(Lj$/time/temporal/m;J)Lj$/time/temporal/m;
    .locals 5

    .line 339
    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->i(Lj$/time/temporal/n;)J

    move-result-wide v0

    .line 340
    invoke-virtual {p0}, Lj$/time/temporal/d;->range()Lj$/time/temporal/v;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lj$/time/temporal/v;->b(JLj$/time/temporal/r;)V

    .line 341
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Lj$/time/temporal/n;->y(Lj$/time/temporal/r;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    add-long/2addr p2, v3

    invoke-interface {p1, p2, p3, v2}, Lj$/time/temporal/m;->a(JLj$/time/temporal/r;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public final range()Lj$/time/temporal/v;
    .locals 6

    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    const-wide/16 v0, 0x1

    .line 147
    invoke-static/range {v0 .. v5}, Lj$/time/temporal/v;->g(JJJ)Lj$/time/temporal/v;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 377
    const-string v0, "DayOfQuarter"

    return-object v0
.end method
