/*
 * This file is a part of BSL Language Server.
 *
 * Copyright (c) 2018-2023
 * Alexey Sosnoviy <labotamy@gmail.com>, Nikita Fedkin <nixel2007@gmail.com> and contributors
 *
 * SPDX-License-Identifier: LGPL-3.0-or-later
 *
 * BSL Language Server is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3.0 of the License, or (at your option) any later version.
 *
 * BSL Language Server is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with BSL Language Server.
 */
package com.github._1c_syntax.bsl.languageserver.diagnostics;

import org.eclipse.lsp4j.Diagnostic;
import org.junit.jupiter.api.Test;

import java.util.List;

import static com.github._1c_syntax.bsl.languageserver.util.Assertions.assertThat;

class ExternalAppStartingDiagnosticTest extends AbstractDiagnosticTest<ExternalAppStartingDiagnostic> {
  ExternalAppStartingDiagnosticTest() {
    super(ExternalAppStartingDiagnostic.class);
  }

  @Test
  void test() {

    List<Diagnostic> diagnostics = getDiagnostics();

    assertThat(diagnostics, true)
      .hasRange(8, 4, 18)
      .hasRange(9, 4, 23)
      .hasRange(10, 4, 23)
      .hasRange(12, 4, 26)
      .hasRange(14, 4, 32)
      .hasRange(15, 26, 52)
      .hasRange(16, 26, 52)
      .hasRange(18, 26, 44)
      .hasRange(19, 26, 44)
      .hasRange(20, 20, 38)
      .hasRange(21, 20, 38)
      .hasRange(23, 26, 42)
      .hasRange(24, 26, 37)
      .hasRange(25, 26, 37)
      .hasRange(35, 10, 34)
      .hasSize(15)
    ;
  }
}
